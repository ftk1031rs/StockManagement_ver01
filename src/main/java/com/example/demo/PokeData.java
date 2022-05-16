package com.example.demo;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="POKEDEX_TBL")
//@Data
public class PokeData {
	
	@Id
	@Column(name="POKE_ID")
//    @GeneratedValue(strategy = GenerationType.AUTO)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pokeId;
	//private int poke_id1_0_;
	
	/** 名前 */
	@Column(name="POKE_NAME")
    private String pokeName;
	//private String poke_name2_0_;
	
    /** タイプ */
    @Column(name="TYPE_ID")
    private int typeId;
    //private int type_id3_0_;

	public int getPokeId() {
		return pokeId;
	}

	public void setPokeId(int pokeId) {
		this.pokeId = pokeId;
	}

	public String getPokeName() {
		return pokeName;
	}

	public void setPokeName(String pokeName) {
		this.pokeName = pokeName;
	}

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
    
}