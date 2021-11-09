
# Technicalisto

## How to Handle Rate & Share App in Apple store 

![Result](readme1.png)

####Follow Steps :

1. Add your UIViewController With two button and connect for display both function .

2. In file of view controller define variables of itunes :

```
    var itunesBaseUrl = "itms-apps://itunes.apple.com/app/"
```

& apple apps url 

```
    var appsBaseUrl = "https://apps.apple.com/us/app/"
```
       
& your app id want to use .

```
    var appId = "app_name/id00000000?"
```

& if you want to define language 

```
    var appLang = "l=ar"
```

3. When tap to share use this method : note , Should sender to be button 

```
    let myurlstring = self.appsBaseUrl + self.appId + self.appLang
    let objectsToShare = [myurlstring]
    let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
    activityVC.popoverPresentationController?.sourceView = self.view
    activityVC.popoverPresentationController?.sourceRect = sender.frame
    self.present(activityVC, animated: true, completion: nil)
       
```

4. When tap to Rate use this method :

```
    guard let url = URL(string: self.itunesBaseUrl + self.appId + self.appLang ) else {
       return
    }
    if #available(iOS 10, *) {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    } else {
        UIApplication.shared.openURL(url)
    }

```
## For Test result of Rate need Physical device

## Source

This app is inspired by Aya Baghdadi”
and copyright for [@Technicalisto](https://www.youtube.com/channel/UC7554uvArdSxL4tlws7Wf8Q)

### Thanks

