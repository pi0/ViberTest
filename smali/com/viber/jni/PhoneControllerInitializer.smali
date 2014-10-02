.class public Lcom/viber/jni/PhoneControllerInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _GenNum:S

.field private _PhoneType:I

.field private _PushToken:Ljava/lang/String;

.field private _UDID:[B

.field private _appMode:I

.field final _delegate:Lcom/viber/jni/PhoneControllerDelegate;

.field private _deviceKey:[B

.field private _lbHost:Ljava/lang/String;

.field private _lbPort:I

.field private _localDBAvailable:Z

.field private _myCountryCode:S

.field private _myPhoneNumber:Ljava/lang/String;

.field private _pixieMode:I

.field private _pixiePort:I

.field private _pttHost:Ljava/lang/String;

.field private _pttPath:Ljava/lang/String;

.field private _serverEnv:I


# direct methods
.method public constructor <init>([B[BLjava/lang/String;ISSLjava/lang/String;Ljava/lang/String;Lcom/viber/jni/PhoneControllerDelegate;ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerInitializer;->_UDID:[B

    .line 29
    iput-object p2, p0, Lcom/viber/jni/PhoneControllerInitializer;->_deviceKey:[B

    .line 30
    iput-object p3, p0, Lcom/viber/jni/PhoneControllerInitializer;->_PushToken:Ljava/lang/String;

    .line 31
    iput p4, p0, Lcom/viber/jni/PhoneControllerInitializer;->_PhoneType:I

    .line 32
    iput-short p5, p0, Lcom/viber/jni/PhoneControllerInitializer;->_GenNum:S

    .line 33
    iput-short p6, p0, Lcom/viber/jni/PhoneControllerInitializer;->_myCountryCode:S

    .line 34
    iput-object p7, p0, Lcom/viber/jni/PhoneControllerInitializer;->_myPhoneNumber:Ljava/lang/String;

    .line 35
    iput-object p9, p0, Lcom/viber/jni/PhoneControllerInitializer;->_delegate:Lcom/viber/jni/PhoneControllerDelegate;

    .line 36
    iput-boolean p10, p0, Lcom/viber/jni/PhoneControllerInitializer;->_localDBAvailable:Z

    .line 37
    iput p11, p0, Lcom/viber/jni/PhoneControllerInitializer;->_appMode:I

    .line 38
    iput p12, p0, Lcom/viber/jni/PhoneControllerInitializer;->_pixieMode:I

    .line 39
    iput p13, p0, Lcom/viber/jni/PhoneControllerInitializer;->_pixiePort:I

    .line 40
    iput-object p8, p0, Lcom/viber/jni/PhoneControllerInitializer;->_pttPath:Ljava/lang/String;

    .line 41
    iput p14, p0, Lcom/viber/jni/PhoneControllerInitializer;->_serverEnv:I

    .line 42
    return-void
.end method
