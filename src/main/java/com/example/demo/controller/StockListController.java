package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.PokeData;
import com.example.demo.PokeDataRepository;
import com.example.demo.entity.ProductEntity;
import com.example.demo.service.StockListService;

@Controller
@RequestMapping("/stock")
public class StockListController {

	private static final String VIEW = "stock/stockList";

/*	
	@GetMapping("/stockList")
	public String write1(Model model) {
		model.addAttribute("errmsg", "ここにエラーメッセージを埋め込んでね");
		//model.addAttribute("pokeDataList",pokeDataList);
		model.addAttribute("productId", "HELLOproductId");
		model.addAttribute("product", "HELLOproduct");
		return VIEW;
	}
	
	
	// github_Connect_test

	
    //検索結果の受け取り処理
    //@ModelAttributeでformからformModelを受け取り、
    //その型(BookData)と変数(bookdata)を指定する
    @PostMapping("/stockSearch")
    public String select(Model model, @ModelAttribute("formModel") ProductEntity stockEntity) {
    	
        //bookdataのゲッターで各値を取得する
        //List<StockEntity> result = bookService.search(bookdata.getGenre(),bookdata.getAuthor(), bookdata.getTitle());
        //model.addAttribute("books", result);

        return VIEW;
    }

    */
    
	@Autowired
	private StockListService service;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return VIEW;
	}
    
    
    
    @PostMapping("/stockSearch")
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView search(ModelAndView mav
			, @RequestParam("productId") String productId
			, @RequestParam("product") String product) {
		mav.setViewName(VIEW);
		mav.addObject("productId", productId);
		mav.addObject("product", product);
		List<ProductEntity> result = service.search(productId, product);
		mav.addObject("result", result);
		return mav;
	}
    
    
	
}
