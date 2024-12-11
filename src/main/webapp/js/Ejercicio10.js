function validar() {
    let chocolate = parseInt(document.getElementById("ch").value);
    let fresa = parseInt(document.getElementById("fr").value);
    let vainilla = parseInt(document.getElementById("va").value);

    // Verifica si están vacíos o si tienen valores que no son válido
    if (isNaN(chocolate) || isNaN(fresa) || isNaN(vainilla)) {
        alert("Introcuce número validos");
        return false;
    }

    // Verifica si los porcentajes están dentro del rango
    if (chocolate < 0 || chocolate > 100 || fresa < 0 || fresa > 100 || vainilla < 0 || vainilla > 100) {
        alert("Los porcentajes tiene estar entre 0 y 100");
        return false;
    }

    // Verifica si la suma no es mayor que 100
    if (chocolate + fresa + vainilla > 100) {
        alert("La suma de los porcentajes tiene ser menor o igual a 100");
        return false;
    }

    return true;
}