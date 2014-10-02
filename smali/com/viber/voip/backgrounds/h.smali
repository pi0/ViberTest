.class Lcom/viber/voip/backgrounds/h;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/a;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/viber/voip/backgrounds/h;->a:Lcom/viber/voip/backgrounds/a;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 571
    invoke-static {}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->values()[Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v0

    aget-object v0, v0, p1

    .line 572
    iget-object v1, p0, Lcom/viber/voip/backgrounds/h;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {v1}, Lcom/viber/voip/backgrounds/a;->d(Lcom/viber/voip/backgrounds/a;)Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 585
    :goto_0
    return-void

    .line 574
    :cond_0
    sget-object v1, Lcom/viber/voip/backgrounds/j;->a:[I

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 584
    :goto_1
    iget-object v1, p0, Lcom/viber/voip/backgrounds/h;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {v1, v0}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/a;Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;)Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    goto :goto_0

    .line 576
    :pswitch_0
    iget-object v1, p0, Lcom/viber/voip/backgrounds/h;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {v1}, Lcom/viber/voip/backgrounds/a;->b(Lcom/viber/voip/backgrounds/a;)Ljava/util/List;

    goto :goto_1

    .line 579
    :pswitch_1
    iget-object v1, p0, Lcom/viber/voip/backgrounds/h;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {v1}, Lcom/viber/voip/backgrounds/a;->e(Lcom/viber/voip/backgrounds/a;)Lcom/viber/voip/backgrounds/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/backgrounds/b/a;->a()V

    goto :goto_1

    .line 574
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
