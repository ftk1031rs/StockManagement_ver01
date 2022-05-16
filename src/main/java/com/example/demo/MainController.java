package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    /**
     * POKEDEX_TBLへアクセスするリポジトリ
     */
    @Autowired
    private PokeDataRepository repository;
	
	
	@GetMapping("/test1")
	public String write1(Model model) {
		model.addAttribute("moji", "hello world!");
		List<PokeData> pokeDataList = repository.findAll();
		model.addAttribute("pokeDataList",pokeDataList);
		return "hello";
	}
}
