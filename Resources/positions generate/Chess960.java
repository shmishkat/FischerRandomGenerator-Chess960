public class Chess960 {
    public static void main(String[] args) {
        String[] inputArr= FileReaderCustom.fileStringArr("input.txt");
        String[] all960 = new String[960];
        for (int i = 0; i < all960.length; i++) {
            all960[i] = inputArr[i+1].split("\\|")[2].trim();
        }
        for (int i = 0; i < all960.length; i++) {
            System.out.print(i+" ");
            System.out.println(all960[i]);
        }
        for (int i = 0; i < all960.length; i++) {
            String arrString = "";
            char[] line = all960[i].toCharArray();
            for (int j = 0; j < line.length;j++) {

                switch (line[j]){
                    case 'R': arrString += "\"wRook\"";break;
                    case 'K': arrString += "\"wKing\"";break;
                    case 'Q': arrString += "\"wQueen\"";break;
                    case 'B': arrString += "\"wBishop\"";break;
                    case 'N': arrString += "\"wKnight\"";break;
                }
                arrString+=",";
            }
            arrString+=(arrString.replace('w','b')).substring(0,arrString.length()-1);
            arrString = "["+arrString+"],";
            all960[i]=arrString;
        }
        for (int i = 0; i < all960.length; i++) {
            System.out.println(all960[i]);
        }
    }
}
