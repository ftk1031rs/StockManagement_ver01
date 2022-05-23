package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.PokeData;
import com.example.demo.PokeDataRepository;

@Controller
@RequestMapping("/stock")
public class StockListController {

	@GetMapping("/stockList")
	public String write1(Model model) {
		model.addAttribute("errmsg", "ここにエラーメッセージを埋め込んでね");
		//model.addAttribute("pokeDataList",pokeDataList);
		model.addAttribute("productId", "HELLO");
		model.addAttribute("product", "HELLO");
		return "stock/stockList";
	}
	
	
    //検索結果の受け取り処理
    //@ModelAttributeでformからformModelを受け取り、
    //その型(BookData)と変数(bookdata)を指定する
//    @PostMapping
//    public String select(@ModelAttribute("formModel") BookData bookdata, Model model) {
//
//        model.addAttribute("msg", "検索結果");
//        //bookdataのゲッターで各値を取得する
//        List<BookData> result = bookService.search(bookdata.getGenre(),bookdata.getAuthor(), bookdata.getTitle());
//        model.addAttribute("books", result);
//
//        return "index";
//    }
	
	
}
