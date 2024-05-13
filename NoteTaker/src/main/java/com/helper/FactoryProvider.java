package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {

	public static SessionFactory factory;
	
	public static SessionFactory getFactory()
	{
		if(factory == null)  //  we will create the Factory if , there is NULL in 'factory'
		{					 // ifnot null then there is value(old) in factory
			factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		
		return factory;
	}
	
	public static void closeFactory()
	{
		if(factory.isOpen())
		{
			factory.close();
		}
		
	}
	
	
	
}
