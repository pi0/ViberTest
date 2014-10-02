.class Lcom/viber/voip/g/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;


# instance fields
.field final synthetic a:Lcom/viber/voip/g/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/g/h;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/viber/voip/g/i;->a:Lcom/viber/voip/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/g/i;->a:Lcom/viber/voip/g/h;

    invoke-virtual {v0, p1}, Lcom/viber/voip/g/h;->a(I)V

    .line 38
    return-void
.end method
