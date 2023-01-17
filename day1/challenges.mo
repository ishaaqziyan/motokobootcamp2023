//Exercises for Day 1

actor {
  //Multiplication
  public func multiply(n:Nat, m:Nat): async Nat {
    n*m;
  };
  
  //Volume
  public func volume(n : Nat) : async Nat {
    n*n*n;
  };

  //Hours to Minutes
  public func hours_to_minutes(n : Nat) : async Nat {
    n*60;
  };

  //Counter Exercise 
  var counter:Nat =0;

 //Set Counter
  public func set_counter(new_counter :Nat):async (){
    counter += new_counter;
    return;
  };

  //Get counter
  public func get_counter(): async Nat {
    return(counter);
  };

  //Divide Function
  public func test_divide(n: Nat, m : Nat) : async Bool{
    if (n/m == 0) {
      return true
    }else {
      return false
    }
  };

  //Check whether its even
  public func is_even(n : Nat) : async Bool {
     if(n /2 ==0){
       return true
     }else {
       return false
     }
  };
  


}
