package io.tmio.scalamain;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class Main {
  
  /**
   * Runs a scala object method.
   * @param args the arguments for the main class - the scala object qualified name, 
   * the method name, and all the arguments the method takes.
   * 
   */
  public static void main(String[] args) {
    try {
        ClassLoader loader = Thread.currentThread().getContextClassLoader();
        Class clazz = loader.loadClass(args[0] + "$");
        Field singleton = clazz.getField("MODULE$");
        Object instance = singleton.get(null);
        Method main = clazz.getMethod(args[1], String[].class);
        String[] newArgs = new String[args.length -2];
        System.arraycopy(args, 2, newArgs, 0, args.length -2);
        main.invoke(instance, new Object[] { newArgs });
    } catch (Exception e) {
        throw new RuntimeException(e);
    }
  }
}