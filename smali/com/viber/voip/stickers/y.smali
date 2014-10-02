.class Lcom/viber/voip/stickers/y;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/r;

.field private b:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/r;)V
    .locals 0
    .parameter

    .prologue
    .line 925
    iput-object p1, p0, Lcom/viber/voip/stickers/y;->a:Lcom/viber/voip/stickers/r;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 931
    invoke-static {}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->values()[Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v0

    aget-object v0, v0, p1

    .line 932
    iget-object v1, p0, Lcom/viber/voip/stickers/y;->b:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    if-ne v0, v1, :cond_0

    .line 946
    :goto_0
    return-void

    .line 934
    :cond_0
    sget-object v1, Lcom/viber/voip/stickers/aa;->a:[I

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 945
    :goto_1
    iput-object v0, p0, Lcom/viber/voip/stickers/y;->b:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    goto :goto_0

    .line 936
    :pswitch_0
    iget-object v1, p0, Lcom/viber/voip/stickers/y;->a:Lcom/viber/voip/stickers/r;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Z)V

    .line 937
    iget-object v1, p0, Lcom/viber/voip/stickers/y;->a:Lcom/viber/voip/stickers/r;

    invoke-static {v1}, Lcom/viber/voip/stickers/r;->b(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/stickers/as;->b()V

    goto :goto_1

    .line 940
    :pswitch_1
    iget-object v1, p0, Lcom/viber/voip/stickers/y;->a:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1}, Lcom/viber/voip/stickers/r;->s()V

    goto :goto_1

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
