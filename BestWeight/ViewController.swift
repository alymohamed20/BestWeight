//
//  ViewController.swift
//  BestWeight
//
//  Created by odc on 12/03/2023.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

   
    @IBOutlet weak var lblWeight: UILabel!
    
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var txtName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtName.delegate=self
        txtHeight.delegate=self
        txtAge.delegate=self
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtName {
            txtHeight.becomeFirstResponder()
        }
        else if textField == txtHeight{
            txtAge.becomeFirstResponder()
        }
        else{
            view.endEditing(true)
        }
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }


    @IBAction func btnRun(_ sender: UIButton) {
        
        var height = Double(txtHeight.text!)!
        var Age = Int(txtAge.text!)!
        
        if(Age<18||Age>70){
            lblWeight.text="In Range 18 to 70"
        }
        
        if(height<160||height>195){
            lblWeight.text="In Range 160 to 195"
        }
        
        
        
        if (Age>=18&&Age<29&&height>=160&&height<165){
            lblWeight.text="58"
        }
        else if(Age>=18&&Age<29&&height>=165&&height<170){
            lblWeight.text="64"
        }
        else if(Age>=18&&Age<29&&height>=170&&height<175){
            lblWeight.text="69"
        }
        else if(Age>=18&&Age<29&&height>=175&&height<180){
            lblWeight.text="72"
        }
        else if(Age>=18&&Age<29&&height>=180&&height<185){
            lblWeight.text="79"
        }
        else if(Age>=18&&Age<29&&height>=185&&height<190){
            lblWeight.text="84"
        }
        else if(Age>=18&&Age<29&&height>=190&&height<=195){
            lblWeight.text="86"
        }
        
        
        if (Age>=29&&Age<39&&height>=160&&height<165){
            lblWeight.text="56"
        }
        else if(Age>=29&&Age<39&&height>=165&&height<170){
            lblWeight.text="66.5"
        }
        else if(Age>=29&&Age<39&&height>=170&&height<175){
            lblWeight.text="67"
        }
        else if(Age>=29&&Age<39&&height>=175&&height<180){
            lblWeight.text="71.5"
        }
        else if(Age>=29&&Age<39&&height>=180&&height<185){
            lblWeight.text="76"
        }
        else if(Age>=29&&Age<39&&height>=185&&height<190){
            lblWeight.text="80"
        }
        else if(Age>=29&&Age<39&&height>=190&&height<=195){
            lblWeight.text="82"
            
        }
        
        
        if (Age>=39&&Age<49&&height>=160&&height<165){
            lblWeight.text="54.6"
        }
        else if(Age>=39&&Age<49&&height>=165&&height<170){
            lblWeight.text="63"
        }
        else if(Age>=39&&Age<49&&height>=170&&height<175){
            lblWeight.text="65"
        }
        else if(Age>=39&&Age<49&&height>=175&&height<180){
            lblWeight.text="70.5"
        }
        else if(Age>=39&&Age<49&&height>=180&&height<185){
            lblWeight.text="74"
        }
        else if(Age>=39&&Age<49&&height>=185&&height<190){
            lblWeight.text="77"
        }
        else if(Age>=39&&Age<49&&height>=190&&height<=195){
            lblWeight.text="79.7"
        }
        
        
        
        if (Age>=49&&Age<=70&&height>=160&&height<165){
            lblWeight.text="53.5"
        }
        else if(Age>=49&&Age<=70&&height>=165&&height<170){
            lblWeight.text="62.5"
        }
        else if(Age>=49&&Age<=70&&height>=170&&height<175){
            lblWeight.text="64.5"
        }
        else if(Age>=49&&Age<=70&&height>=175&&height<180){
            lblWeight.text="69.3"
        }
        else if(Age>=49&&Age<=70&&height>=180&&height<185){
            lblWeight.text="73.2"
        }
        else if(Age>=49&&Age<=70&&height>=185&&height<190){
            lblWeight.text="75"
        }
        else if(Age>=49&&Age<=70&&height>=190&&height<=195){
            lblWeight.text="78"
        }
       
        
        
    }
}

