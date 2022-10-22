const { createApp } = Vue;

createApp({
  created() {
      console.log('vue instace s created');
      // fetch the remote data here and pass it t the data object
      fetch('./data.json')
      .then(res => res.json())
      .then(data => {
          console.log(data);

          // push the data into the vue instance
          this.remoteData = data;
      })
      .catch(error => console.error(error));
  },
  data() {
    return {
      promo: ['title'],

      remoteData: { }
    }
  },

  methods: {
      logClick() {
          console.log('clicked');
      }
  }
}).mount('#app')