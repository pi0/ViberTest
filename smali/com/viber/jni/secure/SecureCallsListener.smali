.class public Lcom/viber/jni/secure/SecureCallsListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/secure/SecureCallsDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/secure/SecureCallsDelegate;",
        ">;",
        "Lcom/viber/jni/secure/SecureCallsDelegate;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/viber/jni/controller/ControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecureCallStateChange(JI[BILjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    new-instance v0, Lcom/viber/jni/secure/SecureCallsListener$1;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/jni/secure/SecureCallsListener$1;-><init>(Lcom/viber/jni/secure/SecureCallsListener;JI[BILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/secure/SecureCallsListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 27
    return-void
.end method
