import { Routes } from '@angular/router';

export const routes: Routes = [
    {
        path : "",
        loadChildren: ()=> import("./public/public.module").then(
            currentModule => currentModule.PublicModule
        )
    },
    {
        path:"app/user",
        loadChildren:()=>import("./secure/secure.module").then(mod=>mod.SecureModule),
        // canMatch:[()=>inject(AuthentificateService).isAuthentificated]
      },
];
