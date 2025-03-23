package com.Service;




import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Model.Expense;
import com.Repository.ExpenseRepository;

@Service
public class ExpenseService {

    @Autowired
    private ExpenseRepository expenseRepository;

	public void saveExpense(Expense expense) {
		expenseRepository.save(expense);
		
	}

	public List<Expense> updateStudent(Expense expense) {
		
		return expenseRepository.findAll();
	}

	public List<Expense> getAllExpenses() {
	
		 List<Expense> expenses = expenseRepository.findAll();  // Fetch the expenses
		    return expenses != null ? expenses : new ArrayList<>(); 
	}

	public List<Expense> deleteData(int id) {
		expenseRepository.deleteById(id);
		return expenseRepository.findAll();
	}

	public List<Expense> ViewData() {
		return expenseRepository.findAll();
	}

	public Expense updateData(int id) {
		return expenseRepository.findById(id).get();
	}
	public long getTotalAmount() {
        // Sum the amounts of all expenses
        return expenseRepository.findAll()
                .stream()
                .mapToLong(Expense::getAmount) // Change to mapToLong since `amount` is a long type
                .sum();
    }
   
}
