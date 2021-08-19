public class Sol {
    public String solution(String new_id) {
        String answer = "";
        answer = first(new_id);
        answer = second(answer);
        answer = third(answer);
        answer = fourth(answer);
        answer = fifth(answer);
        answer = sixth(answer);
        answer = seventh(answer);
        return answer;
    }
    
    public String first(String new_id) {
        return new_id.toLowerCase();
    }
    
    public String second(String new_id) {
        String uniqueChar = "~!@#$%^&*()=+[{]}:?,<>/";
        String id = new_id;
        for(int i = 0; i < id.length(); i++)
            if(uniqueChar.contains("" + id.charAt(i)))
                id = id.replace("" + id.charAt(i), " ");
        return id.replace(" ", "");
    }
    
    public String third(String new_id) {
        String id = new_id;
        String preid = "";
        int i = 0;
        while(i < id.length()-1) {
            if(id.charAt(i) == '.' && id.charAt(i+1) == '.') {
                preid = id.substring(0, i);
                id = id.substring(i+1, id.length());
                id = preid + id;
            }
            else i++;
        }
        return id;
    }
    
    public String fourth(String new_id) {
        String id = new_id;
        if (id.charAt(0) == '.')
            id = id.substring(1, id.length());
        if(id.length() > 0 && id.charAt(id.length()-1) == '.') id = id.substring(0, id.length()-1);
        return id;
    }
    
    public String fifth(String new_id) {
        String id = new_id;
        if(id.length() == 0)
            return "a";
        return id;
    }
    
    public String sixth(String new_id) {
        String id = new_id;
        if(id.length() > 15)
            id = id.substring(0, 15);
        if(id.length() == 15 && id.charAt(14) == '.')
            id = id.substring(0, 14);
        return id;
    }
    
    public String seventh(String new_id) {
        String id = new_id;
        if(id.length() < 3) {
            String last = "" + id.charAt(id.length()-1);
            while(id.length() < 3)
                id += last;
        }
        return id;
    }
}