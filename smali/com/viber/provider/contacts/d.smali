.class public final Lcom/viber/provider/contacts/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field public static final i:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "content://com.viber.provider.vibercontacts/phonebookcontact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    .line 65
    const-string/jumbo v0, "content://com.viber.provider.vibercontacts/joinfullcontactdata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/contacts/d;->b:Landroid/net/Uri;

    .line 66
    const-string/jumbo v0, "content://com.viber.provider.vibercontacts/listunioncontactdata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/contacts/d;->c:Landroid/net/Uri;

    .line 67
    const-string/jumbo v0, "content://com.viber.provider.vibercontacts/joinnumberscontactdata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/contacts/d;->d:Landroid/net/Uri;

    .line 68
    const-string/jumbo v0, "content://com.viber.provider.vibercontacts/composenumberscontactdata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/contacts/d;->e:Landroid/net/Uri;

    .line 69
    const-string/jumbo v0, "content://com.viber.provider.vibercontacts/joindatavibernumbers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/contacts/d;->f:Landroid/net/Uri;

    .line 70
    const-string/jumbo v0, "content://com.viber.provider.vibercontacts/phonebookrcontactrawcontact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/contacts/d;->g:Landroid/net/Uri;

    .line 71
    const-string/jumbo v0, "content://com.viber.provider.vibercontacts/phonebookrcontactrawcontactphonebookdatawithphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/contacts/d;->h:Landroid/net/Uri;

    .line 73
    const-string/jumbo v0, "content://com.viber.provider.vibercontacts/updatecontactversion"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/contacts/d;->i:Landroid/net/Uri;

    return-void
.end method
