package org.fkit.conform;

import static org.junit.Assert.*;

import java.util.List;

import org.fkit.domain.Item;
import org.fkit.service.ItemService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class ItemControllerTest extends BaseJunit{
	@Autowired
	private ItemService itemService;
	
	@Test
	public void test() {
		List<Item> item_listusername = itemService.getAllusername();
		List<Item> item_listclothes = itemService.getAllclothes();
		List<Item> item_listalbums = itemService.getAllalbums();
		System.out.println(item_listusername);
		System.out.println(item_listclothes);
		System.out.println(item_listalbums);
	}

}
