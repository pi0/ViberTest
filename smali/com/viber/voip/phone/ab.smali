.class public abstract Lcom/viber/voip/phone/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Lcom/viber/voip/phone/PhoneActivity;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/viber/voip/phone/ab;->a:Landroid/view/View;

    .line 26
    iput-object p2, p0, Lcom/viber/voip/phone/ab;->b:Lcom/viber/voip/phone/PhoneActivity;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/viber/jni/PhoneControllerWrapper;)V
.end method

.method public abstract a(Lcom/viber/voip/phone/call/k;)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()V
.end method
