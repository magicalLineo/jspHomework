<%@ tag import = "java.util.HashSet"%>
<%@ tag import = "java.util.regex.Pattern"%>
<%@ tag import = "java.util.regex.Matcher"%>
<%@ attribute name = "okString" required = "true" type = "java.lang.String" %>
<%@ variable name-given = "words" variable-class = "java.util.HashSet" scope = "AT_BEGIN" %>
<%
HashSet<String> set = new HashSet<String>();
Pattern pattern;
Matcher matcher;
String regex = "[a-zA-z]+";
pattern = Pattern.compile(regex);
matcher = pattern.matcher(okString);
while (matcher.find()) {
    String str = matcher.group();
    set.add(str);
}
jspContent.setAttribute("words", set);
