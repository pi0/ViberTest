.class Lcom/viber/voip/sms/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/sms/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/sms/a;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/viber/voip/sms/g;->a:Lcom/viber/voip/sms/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/viber/voip/sms/g;->a:Lcom/viber/voip/sms/a;

    invoke-static {v0}, Lcom/viber/voip/sms/a;->d(Lcom/viber/voip/sms/a;)Lcom/viber/voip/sms/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sms/j;->b()V

    .line 276
    return-void
.end method
