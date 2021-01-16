/*
function cargarCatalogo(show,max,id){
    let pizzas = [
        {
            "nombre": "4 Quesos",
            "id": "P1",
            "precio": "7,50€",
            "source": "images/pizza_cuatro_quesos.jpg",
            "html": "pizza.html?id=P1",
            "ingredientes": "Tomate, Mozarrella, Ricotta, Gorgonzola y Parmesano"
        },
        {
            "nombre": "Carbonara",
            "id": "P2",
            "precio": "7,60€",
            "source": "images/carbonara.jpg",
            "html": "pizza.html?id=P2",
            "ingredientes": "Nata, Bacon, Mozarella, Champiñones y Pimienta negra"
        },
        {
            "nombre": "Piazza",
            "id": "P3",
            "precio": "7,50€",
            "source": "images/17-Pizza-Piazza.jpg",
            "html": "pizza.html?id=P3",
            "ingredientes": "Tomate, Mozarrella, Ricotta, Gorgonzola y Parmesano"
        },
        {
            "nombre": "4 Estaciones",
            "id": "P4",
            "precio": "7,60€",
            "source": "images/pizza-4-estaciones.png",
            "html": "pizza.html?id=P4",
            "ingredientes": "Alcachofa, Aceitunas negras, Salami, Champiñones, Albahaca, Mozarella, Tomate y Orégano"
        },
        {
            "nombre": "Frutti di Mare",
            "id": "P5",
            "precio": "8,50€",
            "source": "images/pizza-frutti-di-mare.jpg",
            "html": "pizza.html?id=P5",
            "ingredientes": "Aceite de oliva, Gambones, Tomate, Mejillones, Anillas de calamar y Albahaca"
        },
        {
            "nombre": "Mediterranea",
            "id": "P6",
            "precio": "7,60€",
            "source": "images/mediterranea.png",
            "html": "pizza.html?id=P6",
            "ingredientes": "Sardina, Pimiento verde, Aceitunas negras, Mozarrella y Idiazabal"
        }
    ];

    let complementos = [
        {
            "nombre": "Pan de Ajo",
            "id": "C1",
            "precio": "2,50€",
            "source": "images/Pan-de-ajo-y-queso.jpg", 
            "html": ""
        }, 
        {
            "nombre": "Aros Cebolla",
            "id": "C2",
            "precio": "2,50€",
            "source": "images/aros-de-cebolla.jpg", 
            "html": ""
        }
    ];
    
    let bebidas = [
        {
            "nombre": "Cocacola 1L",
            "id": "C3",
            "precio": "2,50€",
            "source": "images/cocacola.jpg",
            "html": ""
        },
        {
            "nombre": "Fanta 1L",
            "id": "C4",
            "precio": "2,50€",
            "source": "images/Fanta-Logo.png",
            "html": ""
        },
        {
            "nombre": "Clipper 1L",
            "id": "C5",
            "precio": "2,50€",
            "source": "images/clipper.jpg",
            "html": ""
        },
        {
            "nombre": "Agua 1L",
            "id": "C6",
            "precio": "1,50€",
            "source": "images/LG-AQUAVIA-cuadrado.jpg",
            "html": ""
        }
    ];

    let postres = [
        {
            "nombre": "Tarta Queso",
            "id": "PO1",
            "precio": "3,50€",
            "source": "images/bux-1538396997-tarta_de_queso_sin_horno.jpg",
            "html": ""
        }, 
        {
            "nombre": "Crepe Nutella",
            "id": "PO2",
            "precio": "3,50€",
            "source": "images/crepes-veganas-chocolate.jpg",
            "html": ""
        },
        {
            "nombre": "Profiterole",
            "id": "PO3",
            "precio": "3,50€",
            "source": "images/chocolateprofiterole_86196_16x9.jpg",
            "html": ""
        },
        {
            "nombre": "Gofre",
            "id": "PO4",
            "precio": "3,50€",
            "source": "images/gofre.jpg",
            "html": ""
        },
        {
            "nombre": "Panacota",
            "id": "PO5",
            "precio": "3,50€",
            "source": "images/panacota.jpg",
            "html": ""
        },
        {
            "nombre": "Brownie",
            "id": "PO6",
            "precio": "3,50€",
            "source": "images/ppal-brownie_0.jpg",
            "html": ""
        }
    ];
    
    //let intervalo = setInterval(getDatos(show),5000)

    if(show == 1){
        cargarJSON(pizzas,show,max);
    }else if(show == 2){
        cargarJSON(complementos,show,max);
    }else if(show == 3){
        cargarJSON(bebidas,show,max);
    }else if(show == 4){
        cargarJSON(postres,show,max);
    }else if(show == 5){
        cargarPizza(pizzas,id)
    }
}
*/


function getDatos(show,max,id){
    const xhttp = new XMLHttpRequest();
    if(show == 1){
        xhttp.open('GET', 'pizzas.json', true)
    }else if(show == 2){
        xhttp.open('GET', 'complementos.json', true)
    }else if(show == 3){
        xhttp.open('GET', 'bebidas.json', true)
    }else if(show == 4){
        xhttp.open('GET', 'postres.json', true)
    }else if(show == 5){
        xhttp.open('GET', 'pizzas.json', true)
    }
    xhttp.send()
    xhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            let datos = JSON.parse(this.responseText)
            if(show != 5){
                cargarJSON(datos,show,max)
                console.log(datos)
            }else{
                cargarPizza(datos,id)
            }
        }
    }
}


function cargarPizza(json,id) {
    var pizzaImg = "";
    var pizzaName = "";
    var pizzaRcp = "";
    var pizzaPrecio = "";
    for(let item of json){
        if(item.id == id){
            pizzaImg += `
                <img src="${item.source}" alt="${item.nombre}" />
            `
            pizzaName += item.nombre;
            pizzaRcp +=  `
                <p>Ingredientes: ${item.ingredientes}</p>
            `
            pizzaPrecio += `
                <p>Precio: ${item.precio}</p>
            `
        }
    }
    $(".tituloproducto").text(pizzaName);
    document.getElementById("pizzaImg").innerHTML = pizzaImg;
    document.getElementById("pizzaPrecio").innerHTML = pizzaPrecio;
    document.getElementById("pizzaRcp").innerHTML = pizzaRcp;
}

function cargarJSON(json,show,max){
    var fila = 0;
    var div = "";
    if(show == 1){
        document.getElementById("elementos").innerHTML = div;
    }else if(show == 2){
        document.getElementById("complementosid").innerHTML = div;
    }else if(show == 3){
        document.getElementById("bebidasid").innerHTML = div;
    }else if(show == 4){
        document.getElementById("postresid").innerHTML = div;
    }
    for(let item of json){
        if(fila == 0){
            div += "<div class='row'>";
        }
        div += `
        <div class="col">
            <div class="main-pizza"  onclick="window.location='${item.html}'">
                <img  src="${item.source}" alt="${item.nombre}" />
                
                <div class="row marginsetup">
                    <div class="col-8">
                        <p class='pizza-text pizza-title'><a href="${item.html}">${item.nombre}</a> </p>
                    </div>
                    <div class="col-4">
                        <p class="pizza-price pizza-text">${item.precio}</p>
                    </div>
                </div>

            </div>
        </div>
        `;
        
        if(fila == max){
            div += "</div>"
            fila = 0;
            continue;
        }
        fila++;
        
    }
    if(show == 1){
        document.getElementById("elementos").innerHTML = div;
    }else if(show == 2){
        document.getElementById("complementosid").innerHTML = div;
    }else if(show == 3){
        document.getElementById("bebidasid").innerHTML = div;
    }else if(show == 4){
        document.getElementById("postresid").innerHTML = div;
    }
    
}
