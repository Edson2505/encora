package pagesObjets;

import definitions.Hooks;
import org.openqa.selenium.By;

public class Bienvenida extends Hooks {
    By resul = By.xpath("//h1[@class='title']/following-sibling::p[1]");


    public Bienvenida() {
        super(driver);

    }

    public Boolean encontrarTexto(String palabra){
        if (devolverTexto(resul).contains(palabra)){
            return true;
        }else {
            return false;
        }
    }

}
