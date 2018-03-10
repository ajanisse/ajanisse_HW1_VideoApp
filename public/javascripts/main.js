(() => {
  let getButton = document.querySelectorAll('.getButton');

  function getData(){
    //debugger;
    let url = `api/${this.id}`; //does the same stuff as ?movie= + this.id

    fetch(url)
    .then((resp)=> resp.json())
    .then((data)=>{
      console.log(data);
    })
    .catch((error)=>{
      console.log(error);
    });
  }
    
  getButton.forEach(button => button.addEventListener('click', getData));
})();
