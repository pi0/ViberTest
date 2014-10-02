.class Lcom/viber/voip/contacts/c/d/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/a/d;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 192
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/d;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/b;->d(Lcom/viber/voip/contacts/c/d/a/b;)J

    move-result-wide v10

    .line 195
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/d;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/b;->e(Lcom/viber/voip/contacts/c/d/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/d;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/b;->d(Lcom/viber/voip/contacts/c/d/a/b;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/viber/voip/contacts/c/d/a/d;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-static {v2}, Lcom/viber/voip/contacts/c/d/a/b;->e(Lcom/viber/voip/contacts/c/d/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/d;->a:Lcom/viber/voip/contacts/c/d/a/b;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/a/b;->b:Lcom/viber/voip/contacts/c/d/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/a;->b(Lcom/viber/voip/contacts/c/d/a/a;)Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v9

    const-string/jumbo v4, "lookup"

    aput-object v4, v2, v8

    const/4 v4, 0x2

    const-string/jumbo v5, "display_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 204
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 206
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    move-wide v2, v0

    move-object v0, v12

    .line 211
    :goto_1
    invoke-static {v4}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 213
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/d;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/d/a/b;->e(Lcom/viber/voip/contacts/c/d/a/b;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/d;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/c/d/a/b;->a(Lcom/viber/voip/contacts/c/d/a/b;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    :cond_0
    cmp-long v1, v2, v6

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/d;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/d/a/b;->d(Lcom/viber/voip/contacts/c/d/a/b;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/d;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/d/a/b;->e(Lcom/viber/voip/contacts/c/d/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    move v1, v8

    .line 217
    :goto_2
    if-eqz v1, :cond_2

    .line 218
    iget-object v4, p0, Lcom/viber/voip/contacts/c/d/a/d;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-static {v4, v2, v3}, Lcom/viber/voip/contacts/c/d/a/b;->a(Lcom/viber/voip/contacts/c/d/a/b;J)J

    .line 219
    iget-object v4, p0, Lcom/viber/voip/contacts/c/d/a/d;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-static {v4, v0}, Lcom/viber/voip/contacts/c/d/a/b;->a(Lcom/viber/voip/contacts/c/d/a/b;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/d;->a:Lcom/viber/voip/contacts/c/d/a/b;

    move-wide v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/contacts/c/d/a/b;->a(ZJJ)V

    .line 223
    return-void

    .line 198
    :cond_3
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/d;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/d/a/b;->d(Lcom/viber/voip/contacts/c/d/a/b;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    move-object v0, v3

    move-wide v2, v6

    .line 209
    goto :goto_1

    :cond_5
    move v1, v9

    .line 216
    goto :goto_2
.end method
