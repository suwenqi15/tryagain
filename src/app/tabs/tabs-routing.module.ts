import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TabsPage } from './tabs.page';

const routes: Routes = [
  {
    path: 'tabs',
    component: TabsPage,
    children: [
      {
        path: 'Home',
        loadChildren: () => import('../Home/tab1.module').then(m => m.Tab1PageModule)
      },
      {
        path: 'Record',
        loadChildren: () => import('../Record/tab1.module').then(m => m.Tab1PageModule)
      },
      {
        path: 'Profile',
        loadChildren: () => import('../Profile/tab1.module').then(m => m.Tab1PageModule)
      },
      {
        path: 'Setting',
        loadChildren: () => import('../Setting/tab1.module').then(m => m.Tab1PageModule)
      },
      {
        path: 'Information',
        loadChildren: () => import('../Information/tab1.module').then(m => m.Tab1PageModule)
      },
      {
        path: '',
        redirectTo: '/tabs/Home',
        pathMatch: 'full'
      }
    ]
  },
  {
    path: '',
    redirectTo: '/tabs/Home',
    pathMatch: 'full'
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class TabsPageRoutingModule {}
