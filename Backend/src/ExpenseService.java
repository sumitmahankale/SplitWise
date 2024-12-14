package com.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Model.Expense;
import com.Model.UserGroup;
import com.Repository.ExpenseRepository;
import com.Repository.UserGroupRepository;

@Service
public class ExpenseService {

    @Autowired
    private UserGroupRepository groupRepository;

    @Autowired
    private ExpenseRepository expenseRepository;

    public void addExpense(Long groupId, String description, Double amount, String payer,
                           List<String> involvedMembers, Map<String, Double> splitAmounts) {
        UserGroup group = groupRepository.findById(groupId)
                        .orElseThrow(() -> new RuntimeException("Group not found"));

        Expense expense = new Expense();
        expense.setGroup(group);
        expense.setDescription(description);
        expense.setAmount(amount);
        expense.setPayer(payer);
        expense.setInvolvedMembers(involvedMembers);
        expense.setSplitAmounts(splitAmounts);

        expenseRepository.save(expense);

        // Optionally, update balances or track debt for each member here
    }
}
