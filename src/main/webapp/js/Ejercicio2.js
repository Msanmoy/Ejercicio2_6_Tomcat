let idioma = document.getElementById("idioma")

function validarIdioma() {
    let idioma = document.getElementById("idioma").value;
    if (idioma === "" || idioma === "es" || idioma === "pt" || idioma === "en") {
        return true;
    } else {
        alert("El idioma debe ser es, pt o en");
        return false;
    }
}