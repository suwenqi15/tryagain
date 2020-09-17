import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Papa } from 'ngx-papaparse';
import { Platform } from '@ionic/angular';
import { File } from '@ionic-native/file/ngx';
import { SocialSharing } from '@ionic-native/social-sharing/ngx';

@Component({
  selector: 'app-tab1',
  templateUrl: 'tab1.page.html',
  styleUrls: ['tab1.page.scss']
})
export class Tab1Page {
  selectTabs='table view'
  csvData: any[] = [];
  headerRow: any[] = [];
  

  constructor(
    private http: HttpClient,
    private papa: Papa,
    private plt: Platform,
    private file: File,
    private socialSharing: SocialSharing
  ) {

    this.loadCSV();
  }
 
  private loadCSV() {
    this.http
      .get('./assets/food.csv', {
        responseType: 'text'
      })
      .subscribe(
        data => this.extractData(data),
        err => console.log('something went wrong: ', err)
      );
  }
 
  private extractData(res) {
    let csvData = res || '';
 
    this.papa.parse(csvData, {
      complete: parsedData => {
        this.headerRow = parsedData.data.splice(0, 1)[0];
        this.csvData = parsedData.data;
      }
    });
  }
 
  exportCSV() {
    let csv = this.papa.unparse({
      fields: this.headerRow,
      data: this.csvData
    });
 
    if (this.plt.is('cordova')) {
      this.file.writeFile(this.file.dataDirectory, 'data.csv', csv, {replace: true}).then( res => {
        this.socialSharing.share(null, null, res.nativeURL, null).then(e =>{
          // Success
        }).catch(e =>{
          console.log('Share failed:', e)
        });
      }, err => {
        console.log('Error: ', err);
      });
 
    } else {
      // Dummy implementation for Desktop download purpose
      var blob = new Blob([csv]);
      var a = window.document.createElement('a');
      a.href = window.URL.createObjectURL(blob);
      a.download = 'food.csv';
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
    }
  }
 
  trackByFn(index: any, item: any) {
    return index;
  }
}