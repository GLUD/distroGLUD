<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <h2>Acerca de la distro...</h2>
    <ul>
      <li>
        <a
          href="https://vuejs.org"
          target="_blank"
        >
          ¿Qué es?
        </a>
      </li>
      <li>
        <a
          href="https://forum.vuejs.org"
          target="_blank"
        >
          ¿Cómo fue construida?
        </a>
      </li>
      <li>
        <a
          href="https://chat.vuejs.org"
          target="_blank"
        >
          ¿Para qué es?
        </a>
      </li>
      <li>
        <a
          href="https://chat.vuejs.org"
          target="_blank"
        >
          Algunas imágenes
        </a>
      </li>
      <li>
        <a
          href="https://github.com/GLUD/distroGLUD"
          target="_blank"
        >
          ¿Puedo aportar y aprender del código?
        </a>
      </li>
      <br>
      <li>
        <a
          href="http://vuejs-templates.github.io/webpack/"
          target="_blank"
        >
          Licencia
        </a>
      </li>
    </ul>
    <h2>Acerca del GLUD</h2>
    <ul>
      <li>
        <a
          href="https://glud.org/"
          target="_blank"
        >
          Grupo GNU Linux UD
        </a>
      </li>
      <li>
        <a
          href="https://www.udistrital.edu.co/"
          target="_blank"
        >
          Universidad Distrital Francisco José de Caldas
        </a>
      </li>
      <li>
        <a
          href="https://labing.udistrital.edu.co/"
          target="_blank"
        >
          Laboratorios Facultad de Ingeniería
        </a>
      </li>
      
    </ul>
    <p> ¿Tienes algún comentario o duda? <br> 
    No dudes en escribirnos a:
      glud@udistrital.edu.co
    </p>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data () {
    return {
      msg: 'Personalización Distribución GNU Linux'
    }
  }
}
</script>
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
