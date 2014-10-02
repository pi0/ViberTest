.class public Lcom/viber/provider/contacts/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const-string/jumbo v0, "content://com.viber.provider.vibercontacts/phonebookdata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    .line 132
    const-string/jumbo v0, "content://com.viber.provider.vibercontacts/phonebookdatacontact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/contacts/f;->b:Landroid/net/Uri;

    .line 133
    const-string/jumbo v0, "content://com.viber.provider.vibercontacts/phonebookdatanumbersviberblocked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/contacts/f;->c:Landroid/net/Uri;

    return-void
.end method
