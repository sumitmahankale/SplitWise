package com.Model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapKeyColumn;

@Entity
public class Expense {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String description;
    private Double amount;
    private String payer;
    
    @ManyToOne
    private UserGroup group;

    @ElementCollection
    @CollectionTable(name = "expense_split", joinColumns = @JoinColumn(name = "expense_id"))
    @MapKeyColumn(name = "member_email")
    @Column(name = "amount")
    private Map<String, Double> splitAmounts = new HashMap<>();

    @ElementCollection
    @CollectionTable(name = "expense_members", joinColumns = @JoinColumn(name = "expense_id"))
    @Column(name = "member_email")
    private List<String> involvedMembers;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getAmount() {
		return amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

	public String getPayer() {
		return payer;
	}

	public void setPayer(String payer) {
		this.payer = payer;
	}

	public UserGroup getGroup() {
		return group;
	}

	public void setGroup(UserGroup group) {
		this.group = group;
	}

	public Map<String, Double> getSplitAmounts() {
		return splitAmounts;
	}

	public void setSplitAmounts(Map<String, Double> splitAmounts) {
		this.splitAmounts = splitAmounts;
	}

	public List<String> getInvolvedMembers() {
		return involvedMembers;
	}

	public void setInvolvedMembers(List<String> involvedMembers) {
		this.involvedMembers = involvedMembers;
	}

	public Expense(Long id, String description, Double amount, String payer, UserGroup group,
			Map<String, Double> splitAmounts, List<String> involvedMembers) {
		super();
		this.id = id;
		this.description = description;
		this.amount = amount;
		this.payer = payer;
		this.group = group;
		this.splitAmounts = splitAmounts;
		this.involvedMembers = involvedMembers;
	}

	public Expense() {
		super();
		// TODO Auto-generated constructor stub
	}

   
    
}
