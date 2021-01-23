<html>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<input id="search" ><button onclick="getrecepe(document.getElementById('search').value)">Search</button>
<div id="output">
<a href="" id="sourceLink"></a>
</div>

<script>

function getsource(id){
$.ajax({
url:"https://api.spoonacular.com/recipes/"+id+"/information?apiKey=db254b5cd61744d39a2deebd9c361444",
success: function(res) {

document.getElementById("sourceLink").innerHTML+=res.sourceUrl
document.getElementById("sourceLink").href+=res.sourceUrl
}
});
}
function getrecepe(q){
$.ajax({
url:"https://api.spoonacular.com/recipes/search?apiKey=db254b5cd61744d39a2deebd9c361444&number=5&query="+q,
success: function(res) {
for(var i=0; i<res.results.length;i++)
document.getElementById("output").innerHTML+="<h1>"+res.results[i].title+"</h1><br><img src='"+res.baseUri+res.results[i].image+"' width='400' /><br>Ready in "+res.results[i].readyInMinutes+" minutes"+"<a href='"+res.results[i].sourceUrl+"'>"+res.results[i].sourceUrl

}
});
}

</script>

</html>