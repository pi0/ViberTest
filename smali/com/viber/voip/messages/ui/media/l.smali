.class Lcom/viber/voip/messages/ui/media/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:F

.field final synthetic g:J

.field final synthetic h:Z

.field final synthetic i:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;Ljava/lang/String;IIJLjava/lang/String;FJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/l;->i:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/media/l;->a:Ljava/lang/String;

    iput p3, p0, Lcom/viber/voip/messages/ui/media/l;->b:I

    iput p4, p0, Lcom/viber/voip/messages/ui/media/l;->c:I

    iput-wide p5, p0, Lcom/viber/voip/messages/ui/media/l;->d:J

    iput-object p7, p0, Lcom/viber/voip/messages/ui/media/l;->e:Ljava/lang/String;

    iput p8, p0, Lcom/viber/voip/messages/ui/media/l;->f:F

    iput-wide p9, p0, Lcom/viber/voip/messages/ui/media/l;->g:J

    iput-boolean p11, p0, Lcom/viber/voip/messages/ui/media/l;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/l;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocationManager()Lcom/viber/voip/messages/extras/a/a;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/ui/media/l;->b:I

    invoke-static {v1}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v1

    iget v3, p0, Lcom/viber/voip/messages/ui/media/l;->c:I

    invoke-static {v3}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v3

    new-instance v5, Lcom/viber/voip/messages/ui/media/m;

    invoke-direct {v5, p0}, Lcom/viber/voip/messages/ui/media/m;-><init>(Lcom/viber/voip/messages/ui/media/l;)V

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/messages/extras/a/a;->a(DDLcom/viber/voip/messages/extras/a/c;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/l;->i:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/l;->a:Ljava/lang/String;

    iget v3, p0, Lcom/viber/voip/messages/ui/media/l;->b:I

    iget v4, p0, Lcom/viber/voip/messages/ui/media/l;->c:I

    iget-wide v5, p0, Lcom/viber/voip/messages/ui/media/l;->d:J

    iget-object v7, p0, Lcom/viber/voip/messages/ui/media/l;->e:Ljava/lang/String;

    iget v8, p0, Lcom/viber/voip/messages/ui/media/l;->f:F

    iget-wide v9, p0, Lcom/viber/voip/messages/ui/media/l;->g:J

    iget-object v11, p0, Lcom/viber/voip/messages/ui/media/l;->a:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/viber/voip/messages/ui/media/l;->h:Z

    invoke-static/range {v0 .. v12}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->a(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;Landroid/location/Address;Ljava/lang/String;IIJLjava/lang/String;FJLjava/lang/String;Z)V

    goto :goto_0
.end method
