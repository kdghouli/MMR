<template>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

    <router-link class="navbar-brand" to="/dashboard">MMR Gestion</router-link>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <router-link class="nav-link active " aria-current="page" to="/"
              >Home</router-link>
        </li>
        <li class="nav-item">
            <router-link class="nav-link" to="/camions">Camions</router-link>
        </li>
        <li class="nav-item">
            <router-link class="nav-link" to="/voitures">Voitures</router-link>
          </li>
          <li class="nav-item">
            <router-link class="nav-link" to="/scooters">Scooters</router-link>
          </li>
          <li class="nav-item">
            <router-link class="nav-link" to="/chariots">Chariots</router-link>
          </li>




        <li class="nav-item dropdown">
          <router-link class="nav-link dropdown-toggle" to="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Suivi
          </router-link>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Accident</a></li>
            <li><a class="dropdown-item" href="#">Plan annuel</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>

      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>

</nav>


</template>


