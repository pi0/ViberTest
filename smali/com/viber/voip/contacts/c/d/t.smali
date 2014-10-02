.class Lcom/viber/voip/contacts/c/d/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/contacts/c/d/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/m;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/t;->b:Lcom/viber/voip/contacts/c/d/m;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/t;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/t;->b:Lcom/viber/voip/contacts/c/d/m;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/m;->c:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/contacts/a;->a:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 135
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/t;->b:Lcom/viber/voip/contacts/c/d/m;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/m;->d:Lcom/viber/service/contacts/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/t;->b:Lcom/viber/voip/contacts/c/d/m;

    iget-object v1, v1, Lcom/viber/voip/contacts/c/d/m;->c:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0, v1}, Lcom/viber/service/contacts/a/a;->a(Landroid/content/Context;)I

    .line 138
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/t;->b:Lcom/viber/voip/contacts/c/d/m;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/m;->a(Lcom/viber/voip/contacts/c/d/m;)V

    .line 139
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_CURRENT_LOCALE"

    iget-object v2, p0, Lcom/viber/voip/contacts/c/d/t;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 140
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/t;->b:Lcom/viber/voip/contacts/c/d/m;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/m;->b(Lcom/viber/voip/contacts/c/d/m;)V

    .line 141
    return-void
.end method
