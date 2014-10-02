.class public interface abstract Lcom/zoobe/sdk/helper/ZoobeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getBackToViberIntent()Landroid/content/Intent;
.end method

.method public abstract getReleaseAudioIntent()Landroid/content/Intent;
.end method

.method public abstract getZoobeLaunchIntent(Lcom/zoobe/sdk/helper/ZoobeParams;)Landroid/content/Intent;
.end method

.method public abstract getZoobeVersion()Ljava/lang/String;
.end method

.method public abstract handleZoobeResponse(IILandroid/content/Intent;)Lcom/zoobe/sdk/helper/ZoobeResult;
.end method

.method public abstract registerReceiver(Landroid/content/Context;Lcom/zoobe/sdk/helper/ZoobeHelper$ZoobeReceiverListener;)V
.end method
