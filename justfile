commit +message='chore: Update files':
    @jj commit -m "{{message}}"

push +message='chore: Update files': commit
    @echo 'Pushing changes to remote...'
    @jj bookmark set main -r@-
    @jj git push

clean:
    @jj util gc
