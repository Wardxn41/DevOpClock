function updateClock(){

    const now = new Date();

    document.getElementById("clock").textContent =
        now.toLocaleTimeString();

    document.getElementById("date").textContent =
        now.toLocaleDateString(undefined,{
            month:"long",
            day:"numeric",
            year:"numeric"
        });

    document.getElementById("day").textContent =
        now.toLocaleDateString(undefined,{
            weekday:"long"
        });

    document.getElementById("timezone").textContent =
        Intl.DateTimeFormat().resolvedOptions().timeZone;

}

updateClock();

setInterval(updateClock,1000);