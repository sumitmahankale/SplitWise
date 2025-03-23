package com.Repository;

import com.Model.Expense;
import com.Model.Member;
import com.Model.UserGroup;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface ExpenseRepository extends JpaRepository<Expense, Integer> {

}
