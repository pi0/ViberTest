.class public interface abstract Lcom/viber/dexshared/GMaps$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getBitmapDescriptorFactory()Lcom/viber/dexshared/GMaps$BitmapDescriptorFactory;
.end method

.method public abstract getCameraUpdateFactory()Lcom/viber/dexshared/GMaps$CameraUpdateFactory;
.end method

.method public abstract initialize(Landroid/content/Context;)V
.end method

.method public abstract newCameraPosition(Lcom/viber/dexshared/GMaps$LatLng;FFF)Lcom/viber/dexshared/GMaps$CameraPosition;
.end method

.method public abstract newCameraPositionBuilder()Lcom/viber/dexshared/GMaps$CameraPosition$Builder;
.end method

.method public abstract newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation
.end method

.method public abstract newCircleOptions()Lcom/viber/dexshared/GMaps$CircleOptions;
.end method

.method public abstract newGroundOverlayOptions()Lcom/viber/dexshared/GMaps$GroundOverlayOptions;
.end method

.method public abstract newLatLng(DD)Lcom/viber/dexshared/GMaps$LatLng;
.end method

.method public abstract newMarkerOptions()Lcom/viber/dexshared/GMaps$MarkerOptions;
.end method

.method public abstract newSupportMapFragmentHelper()Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper;
.end method
