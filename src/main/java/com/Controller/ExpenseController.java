package com.Controller;




import java.nio.charset.StandardCharsets;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Model.Expense;
import com.Service.ExpenseService;

@Controller
public class ExpenseController {

    @Autowired
    private ExpenseService expenseService;

    ;

    @RequestMapping(value = "/addexpense", method = RequestMethod.POST)
    public ResponseEntity<String> addExpense(@ModelAttribute Expense expense) {
        System.out.println("Submitted Expense: " + expense);

     
        if (expense == null || expense.getName() == null || expense.getAmount() == 0) {
            System.out.println("Expense is invalid. It will not be saved.");
            return ResponseEntity.badRequest().body("failure");  // Return failure if validation fails
        }

       
        expenseService.saveExpense(expense);

    
        return ResponseEntity.ok("success");
    }

    @RequestMapping("/expensetable")
	public String updateStudent(@ModelAttribute Expense expense,Model model)
	{
		List<Expense>sList=expenseService.updateStudent(expense);
		model.addAttribute("data",sList);
		return "HistoryPage";
	}
    
    @RequestMapping("/delete")
	public String DeleteData(@RequestParam int id,Model model)
	{
		List<Expense> sList = expenseService.deleteData(id);
		System.out.println(sList);
		model.addAttribute("data", sList);
		return "HistoryPage";
	}
    @RequestMapping("/relogin")
	public String LogAgain(Model model)
	{List<Expense>sList=expenseService.ViewData();
	model.addAttribute("data",sList);
		return "HistoryPage";
	}
    @RequestMapping("/updateData")
	public String updateData(@RequestParam int id, Model model)
	{Expense stu=expenseService.updateData(id);
	model.addAttribute("stu",stu);
		return "UpdateExpense";
	}
    @GetMapping("/total-amount")
    public String getTotalAmount(Model model) {
        // Get the total amount (assuming expenseService.getTotalAmount() gives you the total value)
        long totalAmount = expenseService.getTotalAmount();
        
        // Add the total amount to the model so it can be accessed in the JSP
        model.addAttribute("totalAmount", totalAmount);
        
        // Return the JSP view name (this is the name of the JSP page)
        return "success"; // name of your JSP page
    }
    @GetMapping("/download-expenses")
    public ResponseEntity<byte[]> downloadExpenses() {
        List<Expense> expenses = expenseService.getAllExpenses(); // Get all expenses from the service
        
        // Generate CSV content
        StringBuilder csvContent = new StringBuilder();
        csvContent.append("ID,Name,Amount,Description\n"); // Header row
        
        for (Expense expense : expenses) {
            csvContent.append(expense.getId()).append(",")
                    .append(expense.getName()).append(",")
                    .append(expense.getAmount()).append(",")
                    .append(expense.getDescp()).append("\n");
        }
        
        byte[] csvBytes = csvContent.toString().getBytes(StandardCharsets.UTF_8);
        
        // Set headers for file download
        HttpHeaders headers = new HttpHeaders();
        headers.setContentDispositionFormData("attachment", "expenses.csv");
        headers.setContentType(MediaType.parseMediaType("text/csv; charset=UTF-8"));
        
        return new ResponseEntity<>(csvBytes, headers, HttpStatus.OK);
    }
}
