.class Lcom/viber/voip/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;


# instance fields
.field final synthetic a:Lcom/viber/voip/g/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/g/c;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/viber/voip/g/d;->a:Lcom/viber/voip/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/viber/voip/g/d;->a:Lcom/viber/voip/g/c;

    invoke-virtual {v0, p1}, Lcom/viber/voip/g/c;->a(I)V

    .line 41
    return-void
.end method
