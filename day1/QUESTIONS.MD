1.How much is the current memory capacity of a canister?
Answer => A Canister can hold up to 4GB

2.What is the issue with the following code sample?
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}

Answer => The issue in this code is that i we use let we cannot assign it to another variable.
          So the fix is, <b>using var instead of let.<b>



What is the issue with the following code sample?
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}

Answer =>  
The code should be modified like this as a Number cannot be a text so we convert it to a string.

  actor {
  var message : Text = "0";

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}



False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.
True. But It can be dangerous as the code executes instantly.
