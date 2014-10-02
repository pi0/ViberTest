.class Lcom/viber/voip/e/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/e/u;


# direct methods
.method constructor <init>(Lcom/viber/voip/e/u;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    iput-wide p2, p0, Lcom/viber/voip/e/z;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->c(Lcom/viber/voip/e/u;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "join"

    iget-wide v2, p0, Lcom/viber/voip/e/z;->a:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1043
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->c(Lcom/viber/voip/e/u;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "pg_join"

    iget-wide v2, p0, Lcom/viber/voip/e/z;->a:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1044
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->c(Lcom/viber/voip/e/u;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "you_join"

    iget-wide v2, p0, Lcom/viber/voip/e/z;->a:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1045
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->c(Lcom/viber/voip/e/u;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "rename"

    iget-wide v2, p0, Lcom/viber/voip/e/z;->a:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1046
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->c(Lcom/viber/voip/e/u;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "smart"

    iget-wide v2, p0, Lcom/viber/voip/e/z;->a:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1047
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->c(Lcom/viber/voip/e/u;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "message"

    iget-wide v2, p0, Lcom/viber/voip/e/z;->a:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1048
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->c(Lcom/viber/voip/e/u;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "missed_call"

    iget-wide v2, p0, Lcom/viber/voip/e/z;->a:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1049
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->c(Lcom/viber/voip/e/u;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "group_follow"

    iget-wide v2, p0, Lcom/viber/voip/e/z;->a:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1050
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->c(Lcom/viber/voip/e/u;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "group_background_changed"

    iget-wide v2, p0, Lcom/viber/voip/e/z;->a:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1051
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->c(Lcom/viber/voip/e/u;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "group_icon_changed"

    iget-wide v2, p0, Lcom/viber/voip/e/z;->a:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1052
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->c(Lcom/viber/voip/e/u;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "group_many_attrs_changed"

    iget-wide v2, p0, Lcom/viber/voip/e/z;->a:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1053
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->c(Lcom/viber/voip/e/u;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "pg_welcome"

    iget-wide v2, p0, Lcom/viber/voip/e/z;->a:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1055
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Lcom/viber/voip/e/u;)Ljava/util/HashSet;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/e/z;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->e(Lcom/viber/voip/e/u;)Ljava/util/HashSet;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/e/z;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1057
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/e/u;->b(Lcom/viber/voip/e/u;JZ)V

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/e/z;->b:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->f(Lcom/viber/voip/e/u;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/e/z;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    return-void
.end method
