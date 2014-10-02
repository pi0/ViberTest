.class public Lorg/webrtc/videoengine/ViEOMXHelper$OpenH264DownloadDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final downloadUri:Ljava/lang/String;

.field public final md5:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    iput-object p1, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OpenH264DownloadDescriptor;->downloadUri:Ljava/lang/String;

    .line 711
    iput-object p2, p0, Lorg/webrtc/videoengine/ViEOMXHelper$OpenH264DownloadDescriptor;->md5:Ljava/lang/String;

    .line 712
    return-void
.end method
