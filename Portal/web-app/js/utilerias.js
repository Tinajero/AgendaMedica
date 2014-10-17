function setNavBarNuevo(){
	var navbar = $("#contenedorNavbarPrincipal");

	navbar.empty();
	navbar.append("<li><a class='create' href='create'>Nuevo</a></li>");

}
function setNavBarLista(){
	var navbar = $("#contenedorNavbarPrincipal");

	navbar.empty();
	navbar.append("<li><a class='list' href='index'>Lista</a></li>");


}
function setNavBarShowEdit(text){
	var navbar = $("#contenedorNavbarPrincipal");

	navbar.empty();
	navbar.append(text);
	
}