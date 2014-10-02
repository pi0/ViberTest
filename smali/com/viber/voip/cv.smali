.class Lcom/viber/voip/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/cu;


# direct methods
.method constructor <init>(Lcom/viber/voip/cu;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/viber/voip/cv;->a:Lcom/viber/voip/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 175
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->am()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 176
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "pref_ptt_autoclean_dirsize_key"

    const-wide/32 v2, 0x9600000

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 177
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lcom/viber/voip/messages/controller/x;->a(JLcom/viber/voip/messages/controller/y;)V

    .line 178
    return-void
.end method
