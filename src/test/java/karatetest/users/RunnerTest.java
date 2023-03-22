package karatetest.users;

import com.intuit.karate.junit5.Karate;

class RunnerTest {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("getRequest").relativeTo(getClass());
    }    

}
