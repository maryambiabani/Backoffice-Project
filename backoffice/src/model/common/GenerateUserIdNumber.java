package model.common;

public class  GenerateUserIdNumber {

    int min=50000;
    int max=10000000;
    public long userIdGenerator(){

        return (long)(Math.random()*(this.max-this.min+1)+this.min);
    }

    public long accNoGenerator(){
        int min=800000000;
        int max=900000000;
        return (long)(Math.random()*(max-min+1)+min);
    }
}
