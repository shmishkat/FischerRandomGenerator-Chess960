import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class FileReaderCustom {
    public static String fileString(String path){
        String fileData = "";
        File file = new File(path);
        try{
            Scanner sc = new Scanner(file);
            while (sc.hasNextLine()){
                fileData += sc.nextLine();
            }
        }
        catch(FileNotFoundException e){
            System.out.println("The file does not exist");
        }
        return fileData;
    }

    public static String[] fileStringArr(String path){
        List<String> fileDataList = new ArrayList<String>();
        File file = new File(path);
        try{
            Scanner sc = new Scanner(file);
            while (sc.hasNextLine()){
                fileDataList.add(sc.nextLine());
            }
        }
        catch(FileNotFoundException e){
            System.out.println("The file does not exist");
        }
        Object[] fileData = fileDataList.toArray();
        return Arrays.copyOf(fileData, fileData.length, String[].class);
    }
}
