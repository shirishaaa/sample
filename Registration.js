function Registration()
{
    this.Firstname="";
    this.Lastname="";
    this.email="";
    this.phno="";
    this.username="";
    this.password="";
    this.confirmpass="";

    this.register=function(Fisrtname,Lastname,email,phno,username,password,confirmpass)
    { 
        if(ValidateEmail(email) && phonenumber(phno) && CheckPassword(password))
        {
            console.log("User Registered");  
            console.log("Confirm Registration ")    
        }
        else{
            console.log("Invalid details...!");
        }
    }

    function phonenumber(phno){
        var phoneno = /^\d{10}$/;
        if(phno.match(phoneno)){
            return true;
        }
        else{
            console.log("message");
            return false;
        }
    }
    
    function CheckPassword(password) 
    { 
        var passw=  /^[A-Za-z]\w{7,14}$/;
        if(password.match(passw)) { 
            console.log('Correct pwd')
            return true;
        }
        else
        { 
            console.log('Wrong...!')
            return false;
        }
    }

    function ValidateEmail(email) 
    {
        var remail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if(email.match(remail)) 
        {
            return true;
        }
        else
        {
            console.log("You have entered an invalid email address!")
            return false;
        }
    }

}

var obj=new Registration();
console.log(obj.register("Shirisha","Bandaru","shirisha1357@gmail.com","9876543210","shirisha","abcdsaddd","abcdsaddd"));