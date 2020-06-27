(() => {
    document.addEventListener("window.load", () => {
        const links= document.querySelector("div");

        let links1 = links.querySelectorAll(".alert");
        let links2 = links.querySelectorAll(".notice");


        window.setTimeout( () => links1.remove(), 2000);
        window.setTimeout( () => links2.remove(), 2000);
    })
})();

