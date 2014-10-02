.class public Lcom/viber/jni/secure/SecureCallsWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/secure/SecureCallsController;


# static fields
.field private static final TAG:Ljava/lang/String; = "SecureCallsWrapper"


# instance fields
.field private mWrappedController:Lcom/viber/jni/secure/SecureCallsController;


# direct methods
.method public constructor <init>(Lcom/viber/jni/secure/SecureCallsController;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/viber/jni/secure/SecureCallsWrapper;->mWrappedController:Lcom/viber/jni/secure/SecureCallsController;

    .line 23
    return-void
.end method


# virtual methods
.method public handleClearSecureCallStorage()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/jni/secure/SecureCallsWrapper;->mWrappedController:Lcom/viber/jni/secure/SecureCallsController;

    invoke-interface {v0}, Lcom/viber/jni/secure/SecureCallsController;->handleClearSecureCallStorage()I

    move-result v0

    return v0
.end method

.method public handleSecureCallVerified(I[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/jni/secure/SecureCallsWrapper;->mWrappedController:Lcom/viber/jni/secure/SecureCallsController;

    invoke-interface {v0, p1, p2}, Lcom/viber/jni/secure/SecureCallsController;->handleSecureCallVerified(I[B)V

    .line 31
    return-void
.end method
