.class public Lcom/viber/voip/contacts/c/f/b/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/viber/voip/contacts/c/f/b/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/f/b/t;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 13
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    .line 26
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v6

    .line 27
    array-length v7, v6

    move v4, v1

    :goto_0
    if-ge v4, v7, :cond_3

    aget-object v8, v6, v4

    .line 28
    iget-object v0, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    move v0, v1

    .line 29
    :goto_1
    array-length v2, v9

    if-ge v0, v2, :cond_2

    .line 30
    aget-object v2, v9, v0

    iget-object v10, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v2, v10}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    move v2, v3

    .line 31
    :goto_2
    aget-object v10, v9, v0

    iget-object v11, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v10

    .line 32
    aget-object v11, v9, v0

    iget-object v12, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    .line 34
    if-eqz v2, :cond_1

    if-eqz v10, :cond_1

    if-nez v11, :cond_1

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isExternalSyncActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v9, v0

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": account of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v9, v0

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " reports active sync state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/t;->a(Ljava/lang/String;)V

    .line 40
    :goto_3
    return v3

    :cond_0
    move v2, v1

    .line 30
    goto :goto_2

    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    move v3, v1

    .line 40
    goto :goto_3
.end method
