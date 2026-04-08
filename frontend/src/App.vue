<template>
  <div class="min-h-screen flex flex-col items-center justify-center bg-gray-50 p-6">
    <!-- Button -->
    <button
      @click="fetchMessage"
      class="bg-gradient-to-r from-blue-500 to-indigo-500 hover:from-blue-600 hover:to-indigo-600 
             text-white font-semibold py-3 px-6 rounded-lg shadow-lg 
             transition-transform duration-200 ease-in-out transform 
             hover:-translate-y-1 active:scale-95"
    >
      Show API Message
    </button>

    <!-- Message -->
    <div class="mt-8 w-full max-w-md bg-white p-6 rounded-xl shadow-md text-center">
      <h1 class="text-4xl font-extrabold text-gray-800 mb-4">
        {{ nombre  }}
        <br>
        {{ message  }}
      </h1>
      <p class="text-gray-500">
        Click the button above to fetch a message from the API.
      </p>
    </div>
  </div>
</template>

<script setup>
import { ref } from "vue";

const message = ref("");
const nombre = ref("");
const error = ref(null);

async function fetchMessage() {
  error.value = null;
  message.value = "";

  try {
    const response = await fetch("http://localhost/backend/api/index.php");
    if (!response.ok) {
      throw new Error("HTTP error " + response.status);
    }
    const data = await response.json();
    message.value = data.message;
    nombre.value = data.nombre;
  } catch (err) {
    error.value = "Failed to fetch API";
    console.error(err);
  } 
}
</script>